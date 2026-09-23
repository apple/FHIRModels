//
//  MedicinalProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProduct)
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
 Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use).
 */
public struct MedicinalProduct: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProduct
	
	/// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons
	public var additionalMonitoringIndicator: CodeableConcept?
	
	/// Supporting documentation, typically for regulatory submission
	public var attachedDocument: [Reference]?
	
	/// Clinical trials or studies that this product is involved in
	public var clinicalTrial: [Reference]?
	
	/// The dose form for a single part product, or combined form of a multiple part product
	public var combinedPharmaceuticalDoseForm: CodeableConcept?
	
	/// A product specific contact, person (in a role), or an organization
	public var contact: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var crossReference: [Identifier]?
	
	/// If this medicine applies to human or veterinary uses
	public var domain: Coding?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this product. Could be an MPID
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the medicinal product as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// An operation applied to the product, for manufacturing or adminsitrative purpose
	public var manufacturingBusinessOperation: [MedicinalProductManufacturingBusinessOperation]?
	
	/// Marketing status of the medicinal product, in contrast to marketing authorizaton
	public var marketingStatus: [MarketingStatus]?
	
	/// A master file for to the medicinal product (e.g. Pharmacovigilance System Master File)
	public var masterFile: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The product's name, including full name and possibly coded parts
	public var name: [MedicinalProductName]
	
	/// Package representation for the product
	public var packagedMedicinalProduct: [Reference]?
	
	/// If authorised for use in children
	public var paediatricUseIndicator: CodeableConcept?
	
	/// Pharmaceutical aspects of product
	public var pharmaceuticalProduct: [Reference]?
	
	/// Allows the product to be classified by various systems
	public var productClassification: [CodeableConcept]?
	
	/// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease
	public var specialDesignation: [MedicinalProductSpecialDesignation]?
	
	/// Whether the Medicinal Product is subject to special measures for regulatory reasons
	public var specialMeasures: [FHIRPrimitive<FHIRString>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Regulatory type, e.g. Investigational or Authorized
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		additionalMonitoringIndicator: CodeableConcept? = nil,
		attachedDocument: [Reference]? = nil,
		clinicalTrial: [Reference]? = nil,
		combinedPharmaceuticalDoseForm: CodeableConcept? = nil,
		contact: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		crossReference: [Identifier]? = nil,
		domain: Coding? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		legalStatusOfSupply: CodeableConcept? = nil,
		manufacturingBusinessOperation: [MedicinalProductManufacturingBusinessOperation]? = nil,
		marketingStatus: [MarketingStatus]? = nil,
		masterFile: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: [MedicinalProductName],
		packagedMedicinalProduct: [Reference]? = nil,
		paediatricUseIndicator: CodeableConcept? = nil,
		pharmaceuticalProduct: [Reference]? = nil,
		productClassification: [CodeableConcept]? = nil,
		specialDesignation: [MedicinalProductSpecialDesignation]? = nil,
		specialMeasures: [FHIRPrimitive<FHIRString>]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.additionalMonitoringIndicator = additionalMonitoringIndicator
		self.attachedDocument = attachedDocument
		self.clinicalTrial = clinicalTrial
		self.combinedPharmaceuticalDoseForm = combinedPharmaceuticalDoseForm
		self.contact = contact
		self.contained = contained
		self.crossReference = crossReference
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.legalStatusOfSupply = legalStatusOfSupply
		self.manufacturingBusinessOperation = manufacturingBusinessOperation
		self.marketingStatus = marketingStatus
		self.masterFile = masterFile
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.packagedMedicinalProduct = packagedMedicinalProduct
		self.paediatricUseIndicator = paediatricUseIndicator
		self.pharmaceuticalProduct = pharmaceuticalProduct
		self.productClassification = productClassification
		self.specialDesignation = specialDesignation
		self.specialMeasures = specialMeasures
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case additionalMonitoringIndicator
		case attachedDocument
		case clinicalTrial
		case combinedPharmaceuticalDoseForm
		case contact
		case contained
		case crossReference
		case domain
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case legalStatusOfSupply
		case manufacturingBusinessOperation
		case marketingStatus
		case masterFile
		case meta
		case modifierExtension
		case name
		case packagedMedicinalProduct
		case paediatricUseIndicator
		case pharmaceuticalProduct
		case productClassification
		case specialDesignation
		case specialMeasures; case _specialMeasures
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalMonitoringIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .additionalMonitoringIndicator)
		self.attachedDocument = try [Reference](from: _container, forKeyIfPresent: .attachedDocument)
		self.clinicalTrial = try [Reference](from: _container, forKeyIfPresent: .clinicalTrial)
		self.combinedPharmaceuticalDoseForm = try CodeableConcept(from: _container, forKeyIfPresent: .combinedPharmaceuticalDoseForm)
		self.contact = try [Reference](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.crossReference = try [Identifier](from: _container, forKeyIfPresent: .crossReference)
		self.domain = try Coding(from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturingBusinessOperation = try [MedicinalProductManufacturingBusinessOperation](from: _container, forKeyIfPresent: .manufacturingBusinessOperation)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.masterFile = try [Reference](from: _container, forKeyIfPresent: .masterFile)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try [MedicinalProductName](from: _container, forKey: .name)
		self.packagedMedicinalProduct = try [Reference](from: _container, forKeyIfPresent: .packagedMedicinalProduct)
		self.paediatricUseIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .paediatricUseIndicator)
		self.pharmaceuticalProduct = try [Reference](from: _container, forKeyIfPresent: .pharmaceuticalProduct)
		self.productClassification = try [CodeableConcept](from: _container, forKeyIfPresent: .productClassification)
		self.specialDesignation = try [MedicinalProductSpecialDesignation](from: _container, forKeyIfPresent: .specialDesignation)
		self.specialMeasures = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .specialMeasures, auxiliaryKey: ._specialMeasures)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try additionalMonitoringIndicator?.encode(on: &_container, forKey: .additionalMonitoringIndicator)
		try attachedDocument?.encode(on: &_container, forKey: .attachedDocument)
		try clinicalTrial?.encode(on: &_container, forKey: .clinicalTrial)
		try combinedPharmaceuticalDoseForm?.encode(on: &_container, forKey: .combinedPharmaceuticalDoseForm)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try crossReference?.encode(on: &_container, forKey: .crossReference)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturingBusinessOperation?.encode(on: &_container, forKey: .manufacturingBusinessOperation)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try masterFile?.encode(on: &_container, forKey: .masterFile)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name)
		try packagedMedicinalProduct?.encode(on: &_container, forKey: .packagedMedicinalProduct)
		try paediatricUseIndicator?.encode(on: &_container, forKey: .paediatricUseIndicator)
		try pharmaceuticalProduct?.encode(on: &_container, forKey: .pharmaceuticalProduct)
		try productClassification?.encode(on: &_container, forKey: .productClassification)
		try specialDesignation?.encode(on: &_container, forKey: .specialDesignation)
		try specialMeasures?.encode(on: &_container, forKey: .specialMeasures, auxiliaryKey: ._specialMeasures)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 An operation applied to the product, for manufacturing or adminsitrative purpose.
 */
public struct MedicinalProductManufacturingBusinessOperation: BackboneElement {
	
	/// Regulatory authorization reference number
	public var authorisationReferenceNumber: Identifier?
	
	/// To indicate if this proces is commercially confidential
	public var confidentialityIndicator: CodeableConcept?
	
	/// Regulatory authorization date
	public var effectiveDate: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The manufacturer or establishment associated with the process
	public var manufacturer: [Reference]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of manufacturing operation
	public var operationType: CodeableConcept?
	
	/// A regulator which oversees the operation
	public var regulator: Reference?
	
	/// Designated initializer
	public init(
		authorisationReferenceNumber: Identifier? = nil,
		confidentialityIndicator: CodeableConcept? = nil,
		effectiveDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: [Reference]? = nil,
		modifierExtension: [Extension]? = nil,
		operationType: CodeableConcept? = nil,
		regulator: Reference? = nil
	) {
		self.authorisationReferenceNumber = authorisationReferenceNumber
		self.confidentialityIndicator = confidentialityIndicator
		self.effectiveDate = effectiveDate
		self.`extension` = `extension`
		self.id = id
		self.manufacturer = manufacturer
		self.modifierExtension = modifierExtension
		self.operationType = operationType
		self.regulator = regulator
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorisationReferenceNumber
		case confidentialityIndicator
		case effectiveDate; case _effectiveDate
		case `extension` = "extension"
		case id; case _id
		case manufacturer
		case modifierExtension
		case operationType
		case regulator
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authorisationReferenceNumber = try Identifier(from: _container, forKeyIfPresent: .authorisationReferenceNumber)
		self.confidentialityIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .confidentialityIndicator)
		self.effectiveDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDate, auxiliaryKey: ._effectiveDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operationType = try CodeableConcept(from: _container, forKeyIfPresent: .operationType)
		self.regulator = try Reference(from: _container, forKeyIfPresent: .regulator)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authorisationReferenceNumber?.encode(on: &_container, forKey: .authorisationReferenceNumber)
		try confidentialityIndicator?.encode(on: &_container, forKey: .confidentialityIndicator)
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate, auxiliaryKey: ._effectiveDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operationType?.encode(on: &_container, forKey: .operationType)
		try regulator?.encode(on: &_container, forKey: .regulator)
	}
}

/**
 The product's name, including full name and possibly coded parts.
 */
public struct MedicinalProductName: BackboneElement {
	
	/// Country where the name applies
	public var countryLanguage: [MedicinalProductNameCountryLanguage]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Coding words or phrases of the name
	public var namePart: [MedicinalProductNameNamePart]?
	
	/// The full product name
	public var productName: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		countryLanguage: [MedicinalProductNameCountryLanguage]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		namePart: [MedicinalProductNameNamePart]? = nil,
		productName: FHIRPrimitive<FHIRString>
	) {
		self.countryLanguage = countryLanguage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.namePart = namePart
		self.productName = productName
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countryLanguage
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case namePart
		case productName; case _productName
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.countryLanguage = try [MedicinalProductNameCountryLanguage](from: _container, forKeyIfPresent: .countryLanguage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.namePart = try [MedicinalProductNameNamePart](from: _container, forKeyIfPresent: .namePart)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKey: .productName, auxiliaryKey: ._productName)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try countryLanguage?.encode(on: &_container, forKey: .countryLanguage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try namePart?.encode(on: &_container, forKey: .namePart)
		try productName.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
	}
}

/**
 Country where the name applies.
 */
public struct MedicinalProductNameCountryLanguage: BackboneElement {
	
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
 Coding words or phrases of the name.
 */
public struct MedicinalProductNameNamePart: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A fragment of a product name
	public var part: FHIRPrimitive<FHIRString>
	
	/// Idenifying type for this part of the name (e.g. strength part)
	public var type: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: FHIRPrimitive<FHIRString>,
		type: Coding
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
		self.type = try Coding(from: _container, forKey: .type)
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
 Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
 */
public struct MedicinalProductSpecialDesignation: BackboneElement {
	
	/// All possible types for "indication[x]"
	public enum IndicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Date when the designation was granted
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the designation, or procedure number
	public var identifier: [Identifier]?
	
	/// Condition for which the medicinal use applies
	/// One of `indication[x]`
	public var indication: IndicationX?
	
	/// The intended use of the product, e.g. prevention, treatment
	public var intendedUse: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Animal species for which this applies
	public var species: CodeableConcept?
	
	/// For example granted, pending, expired or withdrawn
	public var status: CodeableConcept?
	
	/// The type of special designation, e.g. orphan drug, minor use
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		indication: IndicationX? = nil,
		intendedUse: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		species: CodeableConcept? = nil,
		status: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.indication = indication
		self.intendedUse = intendedUse
		self.modifierExtension = modifierExtension
		self.species = species
		self.status = status
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case identifier
		case indicationCodeableConcept
		case indicationReference
		case intendedUse
		case modifierExtension
		case species
		case status
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indication = try Self._decodeIndication(from: _container)
		self.intendedUse = try CodeableConcept(from: _container, forKeyIfPresent: .intendedUse)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.species = try CodeableConcept(from: _container, forKeyIfPresent: .species)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		if let _enum = indication {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .indicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .indicationReference)
		}
		}
		try intendedUse?.encode(on: &_container, forKey: .intendedUse)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try species?.encode(on: &_container, forKey: .species)
		try status?.encode(on: &_container, forKey: .status)
		try type?.encode(on: &_container, forKey: .type)
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
