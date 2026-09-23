//
//  MedicinalProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MedicinalProductDefinition)
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
 Detailed definition of a medicinal product.
 
 A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a
 disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or
 metabolic action. This resource is intended to define and detail such products and their properties, for uses other
 than direct patient care (e.g. regulatory use, or drug catalogs).
 */
public struct MedicinalProductDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductDefinition
	
	/// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons
	public var additionalMonitoringIndicator: CodeableConcept?
	
	/// Additional documentation about the medicinal product
	public var attachedDocument: [Reference]?
	
	/// Key product features such as "sugar free", "modified release"
	public var characteristic: [MedicinalProductDefinitionCharacteristic]?
	
	/// Allows the product to be classified by various systems
	public var classification: [CodeableConcept]?
	
	/// Clinical trials or studies that this product is involved in
	public var clinicalTrial: [Reference]?
	
	/// A code that this product is known by, within some formal terminology
	public var code: [Coding]?
	
	/// The dose form for a single part product, or combined form of a multiple part product
	public var combinedPharmaceuticalDoseForm: CodeableConcept?
	
	/// Types of medicinal manufactured items and/or devices that this product consists of, such as tablets, capsule, or
	/// syringes
	public var comprisedOf: [Reference]?
	
	/// A product specific contact, person (in a role), or an organization
	public var contact: [MedicinalProductDefinitionContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var crossReference: [MedicinalProductDefinitionCrossReference]?
	
	/// General description of this product
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If this medicine applies to human or veterinary uses
	public var domain: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this product. Could be an MPID
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Any component of the drug product which is not the chemical entity defined as the drug substance, or an
	/// excipient in the drug product
	public var impurity: [CodeableReference]?
	
	/// Description of indication(s) for this product, used when structured indications are not required
	public var indication: FHIRPrimitive<FHIRString>?
	
	/// The ingredients of this medicinal product - when not detailed in other resources
	public var ingredient: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the medicinal product as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Marketing status of the medicinal product, in contrast to marketing authorization
	public var marketingStatus: [MarketingStatus]?
	
	/// A master file for the medicinal product (e.g. Pharmacovigilance System Master File)
	public var masterFile: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The product's name, including full name and possibly coded parts
	public var name: [MedicinalProductDefinitionName]
	
	/// A manufacturing or administrative process for the medicinal product
	public var operation: [MedicinalProductDefinitionOperation]?
	
	/// Package type for the product
	public var packagedMedicinalProduct: [CodeableConcept]?
	
	/// If authorised for use in children
	public var pediatricUseIndicator: CodeableConcept?
	
	/// The path by which the product is taken into or makes contact with the body
	public var route: [CodeableConcept]?
	
	/// Whether the Medicinal Product is subject to special measures for regulatory reasons
	public var specialMeasures: [CodeableConcept]?
	
	/// The status within the lifecycle of this product record
	public var status: CodeableConcept?
	
	/// The date at which the given status became applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Regulatory type, e.g. Investigational or Authorized
	public var type: CodeableConcept?
	
	/// A business identifier relating to a specific version of the product
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
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
		self.name = name
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
		case resourceType
		case additionalMonitoringIndicator
		case attachedDocument
		case characteristic
		case classification
		case clinicalTrial
		case code
		case combinedPharmaceuticalDoseForm
		case comprisedOf
		case contact
		case contained
		case crossReference
		case description_fhir = "description"; case _description_fhir = "_description"
		case domain
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case impurity
		case indication; case _indication
		case ingredient
		case language; case _language
		case legalStatusOfSupply
		case marketingStatus
		case masterFile
		case meta
		case modifierExtension
		case name
		case operation
		case packagedMedicinalProduct
		case pediatricUseIndicator
		case route
		case specialMeasures
		case status
		case statusDate; case _statusDate
		case text
		case type
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalMonitoringIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .additionalMonitoringIndicator)
		self.attachedDocument = try [Reference](from: _container, forKeyIfPresent: .attachedDocument)
		self.characteristic = try [MedicinalProductDefinitionCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.clinicalTrial = try [Reference](from: _container, forKeyIfPresent: .clinicalTrial)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.combinedPharmaceuticalDoseForm = try CodeableConcept(from: _container, forKeyIfPresent: .combinedPharmaceuticalDoseForm)
		self.comprisedOf = try [Reference](from: _container, forKeyIfPresent: .comprisedOf)
		self.contact = try [MedicinalProductDefinitionContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.crossReference = try [MedicinalProductDefinitionCrossReference](from: _container, forKeyIfPresent: .crossReference)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.impurity = try [CodeableReference](from: _container, forKeyIfPresent: .impurity)
		self.indication = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .indication, auxiliaryKey: ._indication)
		self.ingredient = try [CodeableConcept](from: _container, forKeyIfPresent: .ingredient)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.masterFile = try [Reference](from: _container, forKeyIfPresent: .masterFile)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try [MedicinalProductDefinitionName](from: _container, forKey: .name)
		self.operation = try [MedicinalProductDefinitionOperation](from: _container, forKeyIfPresent: .operation)
		self.packagedMedicinalProduct = try [CodeableConcept](from: _container, forKeyIfPresent: .packagedMedicinalProduct)
		self.pediatricUseIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .pediatricUseIndicator)
		self.route = try [CodeableConcept](from: _container, forKeyIfPresent: .route)
		self.specialMeasures = try [CodeableConcept](from: _container, forKeyIfPresent: .specialMeasures)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try additionalMonitoringIndicator?.encode(on: &_container, forKey: .additionalMonitoringIndicator)
		try attachedDocument?.encode(on: &_container, forKey: .attachedDocument)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try classification?.encode(on: &_container, forKey: .classification)
		try clinicalTrial?.encode(on: &_container, forKey: .clinicalTrial)
		try code?.encode(on: &_container, forKey: .code)
		try combinedPharmaceuticalDoseForm?.encode(on: &_container, forKey: .combinedPharmaceuticalDoseForm)
		try comprisedOf?.encode(on: &_container, forKey: .comprisedOf)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try crossReference?.encode(on: &_container, forKey: .crossReference)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try impurity?.encode(on: &_container, forKey: .impurity)
		try indication?.encode(on: &_container, forKey: .indication, auxiliaryKey: ._indication)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try masterFile?.encode(on: &_container, forKey: .masterFile)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name)
		try operation?.encode(on: &_container, forKey: .operation)
		try packagedMedicinalProduct?.encode(on: &_container, forKey: .packagedMedicinalProduct)
		try pediatricUseIndicator?.encode(on: &_container, forKey: .pediatricUseIndicator)
		try route?.encode(on: &_container, forKey: .route)
		try specialMeasures?.encode(on: &_container, forKey: .specialMeasures)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Key product features such as "sugar free", "modified release".
 
 Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".
 */
public struct MedicinalProductDefinitionCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case quantity(Quantity)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A code expressing the type of characteristic
	public var type: CodeableConcept
	
	/// A value for the characteristic
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
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDate; case _valueDate
		case valueInteger; case _valueInteger
		case valueMarkdown; case _valueMarkdown
		case valueQuantity
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
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
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
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
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
		return _t_value
	}
}

/**
 A product specific contact, person (in a role), or an organization.
 */
public struct MedicinalProductDefinitionContact: BackboneElement {
	
	/// A product specific contact, person (in a role), or an organization
	public var contact: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		contact: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.contact = contact
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
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
		self.contact = try Reference(from: _container, forKey: .contact)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try contact.encode(on: &_container, forKey: .contact)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Reference to another product, e.g. for linking authorised to investigational product.
 
 Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.
 */
public struct MedicinalProductDefinitionCrossReference: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var product: CodeableReference
	
	/// The type of relationship, for instance branded to generic or virtual to actual product
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		product: CodeableReference,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.product = product
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case product
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
		self.product = try CodeableReference(from: _container, forKey: .product)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try product.encode(on: &_container, forKey: .product)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The product's name, including full name and possibly coded parts.
 */
public struct MedicinalProductDefinitionName: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Coding words or phrases of the name
	public var part: [MedicinalProductDefinitionNamePart]?
	
	/// The full product name
	public var productName: FHIRPrimitive<FHIRString>
	
	/// Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary
	public var type: CodeableConcept?
	
	/// Country and jurisdiction where the name applies
	public var usage: [MedicinalProductDefinitionNameUsage]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: [MedicinalProductDefinitionNamePart]? = nil,
		productName: FHIRPrimitive<FHIRString>,
		type: CodeableConcept? = nil,
		usage: [MedicinalProductDefinitionNameUsage]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.productName = productName
		self.type = type
		self.usage = usage
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case part
		case productName; case _productName
		case type
		case usage
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.part = try [MedicinalProductDefinitionNamePart](from: _container, forKeyIfPresent: .part)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKey: .productName, auxiliaryKey: ._productName)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.usage = try [MedicinalProductDefinitionNameUsage](from: _container, forKeyIfPresent: .usage)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try part?.encode(on: &_container, forKey: .part)
		try productName.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try type?.encode(on: &_container, forKey: .type)
		try usage?.encode(on: &_container, forKey: .usage)
	}
}

/**
 Coding words or phrases of the name.
 */
public struct MedicinalProductDefinitionNamePart: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A fragment of a product name
	public var part: FHIRPrimitive<FHIRString>
	
	/// Identifying type for this part of the name (e.g. strength part)
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: FHIRPrimitive<FHIRString>,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case part; case _part
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
		self.part = try FHIRPrimitive<FHIRString>(from: _container, forKey: .part, auxiliaryKey: ._part)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try part.encode(on: &_container, forKey: .part, auxiliaryKey: ._part)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Country and jurisdiction where the name applies.
 
 Country and jurisdiction where the name applies, and associated language.
 */
public struct MedicinalProductDefinitionNameUsage: BackboneElement {
	
	/// Country code for where this name applies
	public var country: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Jurisdiction code for where this name applies
	public var jurisdiction: CodeableConcept?
	
	/// Language code for this name
	public var language: CodeableConcept
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		country: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: CodeableConcept? = nil,
		language: CodeableConcept,
		modifierExtension: [Extension]? = nil
	) {
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.language = language
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case `extension` = "extension"
		case id; case _id
		case jurisdiction
		case language
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.country = try CodeableConcept(from: _container, forKey: .country)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.jurisdiction = try CodeableConcept(from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try CodeableConcept(from: _container, forKey: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try country.encode(on: &_container, forKey: .country)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 A manufacturing or administrative process for the medicinal product.
 
 A manufacturing or administrative process or step associated with (or performed on) the medicinal product.
 */
public struct MedicinalProductDefinitionOperation: BackboneElement {
	
	/// Specifies whether this process is considered proprietary or confidential
	public var confidentialityIndicator: CodeableConcept?
	
	/// Date range of applicability
	public var effectiveDate: Period?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The organization responsible for the particular process, e.g. the manufacturer or importer
	public var organization: [Reference]?
	
	/// The type of manufacturing operation e.g. manufacturing itself, re-packaging
	public var type: CodeableReference?
	
	/// Designated initializer
	public init(
		confidentialityIndicator: CodeableConcept? = nil,
		effectiveDate: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organization: [Reference]? = nil,
		type: CodeableReference? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case organization
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.confidentialityIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .confidentialityIndicator)
		self.effectiveDate = try Period(from: _container, forKeyIfPresent: .effectiveDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organization = try [Reference](from: _container, forKeyIfPresent: .organization)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try confidentialityIndicator?.encode(on: &_container, forKey: .confidentialityIndicator)
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organization?.encode(on: &_container, forKey: .organization)
		try type?.encode(on: &_container, forKey: .type)
	}
}
