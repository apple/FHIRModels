//
//  MedicinalProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MedicinalProductDefinition)
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
 Detailed definition of a medicinal product.
 
 A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a
 disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or
 metabolic action. This resource is intended to define and detail such products and their properties, for uses other
 than direct patient care (e.g. regulatory use, or drug catalogs).
 */
open class MedicinalProductDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductDefinition }
	
	/// Business identifier for this product. Could be an MPID
	public var identifier: [Identifier]?
	
	/// Regulatory type, e.g. Investigational or Authorized
	public var type: CodeableConcept?
	
	/// If this medicine applies to human or veterinary uses
	public var domain: CodeableConcept?
	
	/// A business identifier relating to a specific version of the product
	public var version: FHIRPrimitive<FHIRString>?
	
	/// The status within the lifecycle of this product record
	public var status: CodeableConcept?
	
	/// The date at which the given status became applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// General description of this product
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The dose form for a single part product, or combined form of a multiple part product
	public var combinedPharmaceuticalDoseForm: CodeableConcept?
	
	/// The path by which the product is taken into or makes contact with the body
	public var route: [CodeableConcept]?
	
	/// Description of indication(s) for this product, used when structured indications are not required
	public var indication: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the medicinal product as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons
	public var additionalMonitoringIndicator: CodeableConcept?
	
	/// Whether the Medicinal Product is subject to special measures for regulatory reasons
	public var specialMeasures: [CodeableConcept]?
	
	/// If authorised for use in children
	public var pediatricUseIndicator: CodeableConcept?
	
	/// Allows the product to be classified by various systems
	public var classification: [CodeableConcept]?
	
	/// Marketing status of the medicinal product, in contrast to marketing authorization
	public var marketingStatus: [MarketingStatus]?
	
	/// Package type for the product
	public var packagedMedicinalProduct: [CodeableConcept]?
	
	/// Types of medicinal manufactured items and/or devices that this product consists of, such as tablets, capsule, or
	/// syringes
	public var comprisedOf: [Reference]?
	
	/// The ingredients of this medicinal product - when not detailed in other resources
	public var ingredient: [CodeableConcept]?
	
	/// Any component of the drug product which is not the chemical entity defined as the drug substance, or an
	/// excipient in the drug product
	public var impurity: [CodeableReference]?
	
	/// Additional documentation about the medicinal product
	public var attachedDocument: [Reference]?
	
	/// A master file for the medicinal product (e.g. Pharmacovigilance System Master File)
	public var masterFile: [Reference]?
	
	/// A product specific contact, person (in a role), or an organization
	public var contact: [MedicinalProductDefinitionContact]?
	
	/// Clinical trials or studies that this product is involved in
	public var clinicalTrial: [Reference]?
	
	/// A code that this product is known by, within some formal terminology
	public var code: [Coding]?
	
	/// The product's name, including full name and possibly coded parts
	public var name: [MedicinalProductDefinitionName]
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var crossReference: [MedicinalProductDefinitionCrossReference]?
	
	/// A manufacturing or administrative process for the medicinal product
	public var operation: [MedicinalProductDefinitionOperation]?
	
	/// Key product features such as "sugar free", "modified release"
	public var characteristic: [MedicinalProductDefinitionCharacteristic]?
	
	/// Designated initializer taking all required properties
	public init(name: [MedicinalProductDefinitionName]) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additionalMonitoringIndicator: CodeableConcept? = nil,
		attachedDocument: [Reference]? = nil,
		characteristic: [MedicinalProductDefinitionCharacteristic]? = nil,
		classification: [CodeableConcept]? = nil,
		clinicalTrial: [Reference]? = nil,
		code: [Coding]? = nil,
		combinedPharmaceuticalDoseForm: CodeableConcept? = nil,
		comprisedOf: [Reference]? = nil,
		contact: [MedicinalProductDefinitionContact]? = nil,
		contained: [ResourceProxy]? = nil,
		crossReference: [MedicinalProductDefinitionCrossReference]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		domain: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		impurity: [CodeableReference]? = nil,
		indication: FHIRPrimitive<FHIRString>? = nil,
		ingredient: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		legalStatusOfSupply: CodeableConcept? = nil,
		marketingStatus: [MarketingStatus]? = nil,
		masterFile: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: [MedicinalProductDefinitionName],
		operation: [MedicinalProductDefinitionOperation]? = nil,
		packagedMedicinalProduct: [CodeableConcept]? = nil,
		pediatricUseIndicator: CodeableConcept? = nil,
		route: [CodeableConcept]? = nil,
		specialMeasures: [CodeableConcept]? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(name: name)
		self.additionalMonitoringIndicator = additionalMonitoringIndicator
		self.attachedDocument = attachedDocument
		self.characteristic = characteristic
		self.classification = classification
		self.clinicalTrial = clinicalTrial
		self.code = code
		self.combinedPharmaceuticalDoseForm = combinedPharmaceuticalDoseForm
		self.comprisedOf = comprisedOf
		self.contact = contact
		self.contained = contained
		self.crossReference = crossReference
		self.description_fhir = description_fhir
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.impurity = impurity
		self.indication = indication
		self.ingredient = ingredient
		self.language = language
		self.legalStatusOfSupply = legalStatusOfSupply
		self.marketingStatus = marketingStatus
		self.masterFile = masterFile
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.operation = operation
		self.packagedMedicinalProduct = packagedMedicinalProduct
		self.pediatricUseIndicator = pediatricUseIndicator
		self.route = route
		self.specialMeasures = specialMeasures
		self.status = status
		self.statusDate = statusDate
		self.text = text
		self.type = type
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalMonitoringIndicator
		case attachedDocument
		case characteristic
		case classification
		case clinicalTrial
		case code
		case combinedPharmaceuticalDoseForm
		case comprisedOf
		case contact
		case crossReference
		case description_fhir = "description"; case _description_fhir = "_description"
		case domain
		case identifier
		case impurity
		case indication; case _indication
		case ingredient
		case legalStatusOfSupply
		case marketingStatus
		case masterFile
		case name
		case operation
		case packagedMedicinalProduct
		case pediatricUseIndicator
		case route
		case specialMeasures
		case status
		case statusDate; case _statusDate
		case type
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalMonitoringIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .additionalMonitoringIndicator)
		self.attachedDocument = try [Reference](from: _container, forKeyIfPresent: .attachedDocument)
		self.characteristic = try [MedicinalProductDefinitionCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.clinicalTrial = try [Reference](from: _container, forKeyIfPresent: .clinicalTrial)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.combinedPharmaceuticalDoseForm = try CodeableConcept(from: _container, forKeyIfPresent: .combinedPharmaceuticalDoseForm)
		self.comprisedOf = try [Reference](from: _container, forKeyIfPresent: .comprisedOf)
		self.contact = try [MedicinalProductDefinitionContact](from: _container, forKeyIfPresent: .contact)
		self.crossReference = try [MedicinalProductDefinitionCrossReference](from: _container, forKeyIfPresent: .crossReference)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.impurity = try [CodeableReference](from: _container, forKeyIfPresent: .impurity)
		self.indication = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .indication, auxiliaryKey: ._indication)
		self.ingredient = try [CodeableConcept](from: _container, forKeyIfPresent: .ingredient)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.masterFile = try [Reference](from: _container, forKeyIfPresent: .masterFile)
		self.name = try [MedicinalProductDefinitionName](from: _container, forKey: .name)
		self.operation = try [MedicinalProductDefinitionOperation](from: _container, forKeyIfPresent: .operation)
		self.packagedMedicinalProduct = try [CodeableConcept](from: _container, forKeyIfPresent: .packagedMedicinalProduct)
		self.pediatricUseIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .pediatricUseIndicator)
		self.route = try [CodeableConcept](from: _container, forKeyIfPresent: .route)
		self.specialMeasures = try [CodeableConcept](from: _container, forKeyIfPresent: .specialMeasures)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additionalMonitoringIndicator?.encode(on: &_container, forKey: .additionalMonitoringIndicator)
		try attachedDocument?.encode(on: &_container, forKey: .attachedDocument)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try classification?.encode(on: &_container, forKey: .classification)
		try clinicalTrial?.encode(on: &_container, forKey: .clinicalTrial)
		try code?.encode(on: &_container, forKey: .code)
		try combinedPharmaceuticalDoseForm?.encode(on: &_container, forKey: .combinedPharmaceuticalDoseForm)
		try comprisedOf?.encode(on: &_container, forKey: .comprisedOf)
		try contact?.encode(on: &_container, forKey: .contact)
		try crossReference?.encode(on: &_container, forKey: .crossReference)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try domain?.encode(on: &_container, forKey: .domain)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try impurity?.encode(on: &_container, forKey: .impurity)
		try indication?.encode(on: &_container, forKey: .indication, auxiliaryKey: ._indication)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try masterFile?.encode(on: &_container, forKey: .masterFile)
		try name.encode(on: &_container, forKey: .name)
		try operation?.encode(on: &_container, forKey: .operation)
		try packagedMedicinalProduct?.encode(on: &_container, forKey: .packagedMedicinalProduct)
		try pediatricUseIndicator?.encode(on: &_container, forKey: .pediatricUseIndicator)
		try route?.encode(on: &_container, forKey: .route)
		try specialMeasures?.encode(on: &_container, forKey: .specialMeasures)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try type?.encode(on: &_container, forKey: .type)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalMonitoringIndicator == _other.additionalMonitoringIndicator
		    && attachedDocument == _other.attachedDocument
		    && characteristic == _other.characteristic
		    && classification == _other.classification
		    && clinicalTrial == _other.clinicalTrial
		    && code == _other.code
		    && combinedPharmaceuticalDoseForm == _other.combinedPharmaceuticalDoseForm
		    && comprisedOf == _other.comprisedOf
		    && contact == _other.contact
		    && crossReference == _other.crossReference
		    && description_fhir == _other.description_fhir
		    && domain == _other.domain
		    && identifier == _other.identifier
		    && impurity == _other.impurity
		    && indication == _other.indication
		    && ingredient == _other.ingredient
		    && legalStatusOfSupply == _other.legalStatusOfSupply
		    && marketingStatus == _other.marketingStatus
		    && masterFile == _other.masterFile
		    && name == _other.name
		    && operation == _other.operation
		    && packagedMedicinalProduct == _other.packagedMedicinalProduct
		    && pediatricUseIndicator == _other.pediatricUseIndicator
		    && route == _other.route
		    && specialMeasures == _other.specialMeasures
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && type == _other.type
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalMonitoringIndicator)
		hasher.combine(attachedDocument)
		hasher.combine(characteristic)
		hasher.combine(classification)
		hasher.combine(clinicalTrial)
		hasher.combine(code)
		hasher.combine(combinedPharmaceuticalDoseForm)
		hasher.combine(comprisedOf)
		hasher.combine(contact)
		hasher.combine(crossReference)
		hasher.combine(description_fhir)
		hasher.combine(domain)
		hasher.combine(identifier)
		hasher.combine(impurity)
		hasher.combine(indication)
		hasher.combine(ingredient)
		hasher.combine(legalStatusOfSupply)
		hasher.combine(marketingStatus)
		hasher.combine(masterFile)
		hasher.combine(name)
		hasher.combine(operation)
		hasher.combine(packagedMedicinalProduct)
		hasher.combine(pediatricUseIndicator)
		hasher.combine(route)
		hasher.combine(specialMeasures)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(type)
		hasher.combine(version)
	}
}

/**
 Key product features such as "sugar free", "modified release".
 
 Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".
 */
open class MedicinalProductDefinitionCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		case quantity(Quantity)
	}
	
	/// A code expressing the type of characteristic
	public var type: CodeableConcept
	
	/// A value for the characteristic
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
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDate; case _valueDate
		case valueInteger; case _valueInteger
		case valueMarkdown; case _valueMarkdown
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
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		try type.encode(on: &_container, forKey: .type)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .markdown(let _value):
				try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionCharacteristic else {
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
 A product specific contact, person (in a role), or an organization.
 */
open class MedicinalProductDefinitionContact: BackboneElement {
	
	/// Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information
	public var type: CodeableConcept?
	
	/// A product specific contact, person (in a role), or an organization
	public var contact: Reference
	
	/// Designated initializer taking all required properties
	public init(contact: Reference) {
		self.contact = contact
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contact: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(contact: contact)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try Reference(from: _container, forKey: .contact)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact.encode(on: &_container, forKey: .contact)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(type)
	}
}

/**
 Reference to another product, e.g. for linking authorised to investigational product.
 
 Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.
 */
open class MedicinalProductDefinitionCrossReference: BackboneElement {
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var product: CodeableReference
	
	/// The type of relationship, for instance branded to generic or virtual to actual product
	public var type: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(product: CodeableReference) {
		self.product = product
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		product: CodeableReference,
		type: CodeableConcept? = nil
	) {
		self.init(product: product)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case product
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.product = try CodeableReference(from: _container, forKey: .product)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try product.encode(on: &_container, forKey: .product)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionCrossReference else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return product == _other.product
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(product)
		hasher.combine(type)
	}
}

/**
 The product's name, including full name and possibly coded parts.
 */
open class MedicinalProductDefinitionName: BackboneElement {
	
	/// The full product name
	public var productName: FHIRPrimitive<FHIRString>
	
	/// Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary
	public var type: CodeableConcept?
	
	/// Coding words or phrases of the name
	public var part: [MedicinalProductDefinitionNamePart]?
	
	/// Country and jurisdiction where the name applies
	public var usage: [MedicinalProductDefinitionNameUsage]?
	
	/// Designated initializer taking all required properties
	public init(productName: FHIRPrimitive<FHIRString>) {
		self.productName = productName
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: [MedicinalProductDefinitionNamePart]? = nil,
		productName: FHIRPrimitive<FHIRString>,
		type: CodeableConcept? = nil,
		usage: [MedicinalProductDefinitionNameUsage]? = nil
	) {
		self.init(productName: productName)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.type = type
		self.usage = usage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case part
		case productName; case _productName
		case type
		case usage
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.part = try [MedicinalProductDefinitionNamePart](from: _container, forKeyIfPresent: .part)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKey: .productName, auxiliaryKey: ._productName)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.usage = try [MedicinalProductDefinitionNameUsage](from: _container, forKeyIfPresent: .usage)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try part?.encode(on: &_container, forKey: .part)
		try productName.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try type?.encode(on: &_container, forKey: .type)
		try usage?.encode(on: &_container, forKey: .usage)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return part == _other.part
		    && productName == _other.productName
		    && type == _other.type
		    && usage == _other.usage
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(part)
		hasher.combine(productName)
		hasher.combine(type)
		hasher.combine(usage)
	}
}

/**
 Coding words or phrases of the name.
 */
open class MedicinalProductDefinitionNamePart: BackboneElement {
	
	/// A fragment of a product name
	public var part: FHIRPrimitive<FHIRString>
	
	/// Identifying type for this part of the name (e.g. strength part)
	public var type: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(part: FHIRPrimitive<FHIRString>, type: CodeableConcept) {
		self.part = part
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: FHIRPrimitive<FHIRString>,
		type: CodeableConcept
	) {
		self.init(part: part, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case part; case _part
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.part = try FHIRPrimitive<FHIRString>(from: _container, forKey: .part, auxiliaryKey: ._part)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try part.encode(on: &_container, forKey: .part, auxiliaryKey: ._part)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionNamePart else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return part == _other.part
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(part)
		hasher.combine(type)
	}
}

/**
 Country and jurisdiction where the name applies.
 
 Country and jurisdiction where the name applies, and associated language.
 */
open class MedicinalProductDefinitionNameUsage: BackboneElement {
	
	/// Country code for where this name applies
	public var country: CodeableConcept
	
	/// Jurisdiction code for where this name applies
	public var jurisdiction: CodeableConcept?
	
	/// Language code for this name
	public var language: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(country: CodeableConcept, language: CodeableConcept) {
		self.country = country
		self.language = language
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		country: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: CodeableConcept? = nil,
		language: CodeableConcept,
		modifierExtension: [Extension]? = nil
	) {
		self.init(country: country, language: language)
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case jurisdiction
		case language
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.country = try CodeableConcept(from: _container, forKey: .country)
		self.jurisdiction = try CodeableConcept(from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try CodeableConcept(from: _container, forKey: .language)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country.encode(on: &_container, forKey: .country)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language.encode(on: &_container, forKey: .language)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionNameUsage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return country == _other.country
		    && jurisdiction == _other.jurisdiction
		    && language == _other.language
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(jurisdiction)
		hasher.combine(language)
	}
}

/**
 A manufacturing or administrative process for the medicinal product.
 
 A manufacturing or administrative process or step associated with (or performed on) the medicinal product.
 */
open class MedicinalProductDefinitionOperation: BackboneElement {
	
	/// The type of manufacturing operation e.g. manufacturing itself, re-packaging
	public var type: CodeableReference?
	
	/// Date range of applicability
	public var effectiveDate: Period?
	
	/// The organization responsible for the particular process, e.g. the manufacturer or importer
	public var organization: [Reference]?
	
	/// Specifies whether this process is considered proprietary or confidential
	public var confidentialityIndicator: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		confidentialityIndicator: CodeableConcept? = nil,
		effectiveDate: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organization: [Reference]? = nil,
		type: CodeableReference? = nil
	) {
		self.init()
		self.confidentialityIndicator = confidentialityIndicator
		self.effectiveDate = effectiveDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case confidentialityIndicator
		case effectiveDate
		case organization
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.confidentialityIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .confidentialityIndicator)
		self.effectiveDate = try Period(from: _container, forKeyIfPresent: .effectiveDate)
		self.organization = try [Reference](from: _container, forKeyIfPresent: .organization)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try confidentialityIndicator?.encode(on: &_container, forKey: .confidentialityIndicator)
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate)
		try organization?.encode(on: &_container, forKey: .organization)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return confidentialityIndicator == _other.confidentialityIndicator
		    && effectiveDate == _other.effectiveDate
		    && organization == _other.organization
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(confidentialityIndicator)
		hasher.combine(effectiveDate)
		hasher.combine(organization)
		hasher.combine(type)
	}
}
