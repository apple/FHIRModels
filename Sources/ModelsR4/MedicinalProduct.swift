//
//  MedicinalProduct.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProduct)
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
 Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use).
 */
open class MedicinalProduct: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProduct }
	
	/// Business identifier for this product. Could be an MPID
	public var identifier: [Identifier]?
	
	/// Regulatory type, e.g. Investigational or Authorized
	public var type: CodeableConcept?
	
	/// If this medicine applies to human or veterinary uses
	public var domain: Coding?
	
	/// The dose form for a single part product, or combined form of a multiple part product
	public var combinedPharmaceuticalDoseForm: CodeableConcept?
	
	/// The legal status of supply of the medicinal product as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons
	public var additionalMonitoringIndicator: CodeableConcept?
	
	/// Whether the Medicinal Product is subject to special measures for regulatory reasons
	public var specialMeasures: [FHIRPrimitive<FHIRString>]?
	
	/// If authorised for use in children
	public var paediatricUseIndicator: CodeableConcept?
	
	/// Allows the product to be classified by various systems
	public var productClassification: [CodeableConcept]?
	
	/// Marketing status of the medicinal product, in contrast to marketing authorizaton
	public var marketingStatus: [MarketingStatus]?
	
	/// Pharmaceutical aspects of product
	public var pharmaceuticalProduct: [Reference]?
	
	/// Package representation for the product
	public var packagedMedicinalProduct: [Reference]?
	
	/// Supporting documentation, typically for regulatory submission
	public var attachedDocument: [Reference]?
	
	/// A master file for to the medicinal product (e.g. Pharmacovigilance System Master File)
	public var masterFile: [Reference]?
	
	/// A product specific contact, person (in a role), or an organization
	public var contact: [Reference]?
	
	/// Clinical trials or studies that this product is involved in
	public var clinicalTrial: [Reference]?
	
	/// The product's name, including full name and possibly coded parts
	public var name: [MedicinalProductName]
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var crossReference: [Identifier]?
	
	/// An operation applied to the product, for manufacturing or adminsitrative purpose
	public var manufacturingBusinessOperation: [MedicinalProductManufacturingBusinessOperation]?
	
	/// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease
	public var specialDesignation: [MedicinalProductSpecialDesignation]?
	
	/// Designated initializer taking all required properties
	public init(name: [MedicinalProductName]) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init(name: name)
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
		case additionalMonitoringIndicator
		case attachedDocument
		case clinicalTrial
		case combinedPharmaceuticalDoseForm
		case contact
		case crossReference
		case domain
		case identifier
		case legalStatusOfSupply
		case manufacturingBusinessOperation
		case marketingStatus
		case masterFile
		case name
		case packagedMedicinalProduct
		case paediatricUseIndicator
		case pharmaceuticalProduct
		case productClassification
		case specialDesignation
		case specialMeasures; case _specialMeasures
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalMonitoringIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .additionalMonitoringIndicator)
		self.attachedDocument = try [Reference](from: _container, forKeyIfPresent: .attachedDocument)
		self.clinicalTrial = try [Reference](from: _container, forKeyIfPresent: .clinicalTrial)
		self.combinedPharmaceuticalDoseForm = try CodeableConcept(from: _container, forKeyIfPresent: .combinedPharmaceuticalDoseForm)
		self.contact = try [Reference](from: _container, forKeyIfPresent: .contact)
		self.crossReference = try [Identifier](from: _container, forKeyIfPresent: .crossReference)
		self.domain = try Coding(from: _container, forKeyIfPresent: .domain)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturingBusinessOperation = try [MedicinalProductManufacturingBusinessOperation](from: _container, forKeyIfPresent: .manufacturingBusinessOperation)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.masterFile = try [Reference](from: _container, forKeyIfPresent: .masterFile)
		self.name = try [MedicinalProductName](from: _container, forKey: .name)
		self.packagedMedicinalProduct = try [Reference](from: _container, forKeyIfPresent: .packagedMedicinalProduct)
		self.paediatricUseIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .paediatricUseIndicator)
		self.pharmaceuticalProduct = try [Reference](from: _container, forKeyIfPresent: .pharmaceuticalProduct)
		self.productClassification = try [CodeableConcept](from: _container, forKeyIfPresent: .productClassification)
		self.specialDesignation = try [MedicinalProductSpecialDesignation](from: _container, forKeyIfPresent: .specialDesignation)
		self.specialMeasures = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .specialMeasures, auxiliaryKey: ._specialMeasures)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additionalMonitoringIndicator?.encode(on: &_container, forKey: .additionalMonitoringIndicator)
		try attachedDocument?.encode(on: &_container, forKey: .attachedDocument)
		try clinicalTrial?.encode(on: &_container, forKey: .clinicalTrial)
		try combinedPharmaceuticalDoseForm?.encode(on: &_container, forKey: .combinedPharmaceuticalDoseForm)
		try contact?.encode(on: &_container, forKey: .contact)
		try crossReference?.encode(on: &_container, forKey: .crossReference)
		try domain?.encode(on: &_container, forKey: .domain)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturingBusinessOperation?.encode(on: &_container, forKey: .manufacturingBusinessOperation)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try masterFile?.encode(on: &_container, forKey: .masterFile)
		try name.encode(on: &_container, forKey: .name)
		try packagedMedicinalProduct?.encode(on: &_container, forKey: .packagedMedicinalProduct)
		try paediatricUseIndicator?.encode(on: &_container, forKey: .paediatricUseIndicator)
		try pharmaceuticalProduct?.encode(on: &_container, forKey: .pharmaceuticalProduct)
		try productClassification?.encode(on: &_container, forKey: .productClassification)
		try specialDesignation?.encode(on: &_container, forKey: .specialDesignation)
		try specialMeasures?.encode(on: &_container, forKey: .specialMeasures, auxiliaryKey: ._specialMeasures)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProduct else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalMonitoringIndicator == _other.additionalMonitoringIndicator
		    && attachedDocument == _other.attachedDocument
		    && clinicalTrial == _other.clinicalTrial
		    && combinedPharmaceuticalDoseForm == _other.combinedPharmaceuticalDoseForm
		    && contact == _other.contact
		    && crossReference == _other.crossReference
		    && domain == _other.domain
		    && identifier == _other.identifier
		    && legalStatusOfSupply == _other.legalStatusOfSupply
		    && manufacturingBusinessOperation == _other.manufacturingBusinessOperation
		    && marketingStatus == _other.marketingStatus
		    && masterFile == _other.masterFile
		    && name == _other.name
		    && packagedMedicinalProduct == _other.packagedMedicinalProduct
		    && paediatricUseIndicator == _other.paediatricUseIndicator
		    && pharmaceuticalProduct == _other.pharmaceuticalProduct
		    && productClassification == _other.productClassification
		    && specialDesignation == _other.specialDesignation
		    && specialMeasures == _other.specialMeasures
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalMonitoringIndicator)
		hasher.combine(attachedDocument)
		hasher.combine(clinicalTrial)
		hasher.combine(combinedPharmaceuticalDoseForm)
		hasher.combine(contact)
		hasher.combine(crossReference)
		hasher.combine(domain)
		hasher.combine(identifier)
		hasher.combine(legalStatusOfSupply)
		hasher.combine(manufacturingBusinessOperation)
		hasher.combine(marketingStatus)
		hasher.combine(masterFile)
		hasher.combine(name)
		hasher.combine(packagedMedicinalProduct)
		hasher.combine(paediatricUseIndicator)
		hasher.combine(pharmaceuticalProduct)
		hasher.combine(productClassification)
		hasher.combine(specialDesignation)
		hasher.combine(specialMeasures)
		hasher.combine(type)
	}
}

/**
 An operation applied to the product, for manufacturing or adminsitrative purpose.
 */
open class MedicinalProductManufacturingBusinessOperation: BackboneElement {
	
	/// The type of manufacturing operation
	public var operationType: CodeableConcept?
	
	/// Regulatory authorization reference number
	public var authorisationReferenceNumber: Identifier?
	
	/// Regulatory authorization date
	public var effectiveDate: FHIRPrimitive<DateTime>?
	
	/// To indicate if this proces is commercially confidential
	public var confidentialityIndicator: CodeableConcept?
	
	/// The manufacturer or establishment associated with the process
	public var manufacturer: [Reference]?
	
	/// A regulator which oversees the operation
	public var regulator: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authorisationReferenceNumber: Identifier? = nil,
							confidentialityIndicator: CodeableConcept? = nil,
							effectiveDate: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: [Reference]? = nil,
							modifierExtension: [Extension]? = nil,
							operationType: CodeableConcept? = nil,
							regulator: Reference? = nil)
	{
		self.init()
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
		case manufacturer
		case operationType
		case regulator
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authorisationReferenceNumber = try Identifier(from: _container, forKeyIfPresent: .authorisationReferenceNumber)
		self.confidentialityIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .confidentialityIndicator)
		self.effectiveDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDate, auxiliaryKey: ._effectiveDate)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.operationType = try CodeableConcept(from: _container, forKeyIfPresent: .operationType)
		self.regulator = try Reference(from: _container, forKeyIfPresent: .regulator)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authorisationReferenceNumber?.encode(on: &_container, forKey: .authorisationReferenceNumber)
		try confidentialityIndicator?.encode(on: &_container, forKey: .confidentialityIndicator)
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate, auxiliaryKey: ._effectiveDate)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try operationType?.encode(on: &_container, forKey: .operationType)
		try regulator?.encode(on: &_container, forKey: .regulator)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductManufacturingBusinessOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authorisationReferenceNumber == _other.authorisationReferenceNumber
		    && confidentialityIndicator == _other.confidentialityIndicator
		    && effectiveDate == _other.effectiveDate
		    && manufacturer == _other.manufacturer
		    && operationType == _other.operationType
		    && regulator == _other.regulator
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorisationReferenceNumber)
		hasher.combine(confidentialityIndicator)
		hasher.combine(effectiveDate)
		hasher.combine(manufacturer)
		hasher.combine(operationType)
		hasher.combine(regulator)
	}
}

/**
 The product's name, including full name and possibly coded parts.
 */
open class MedicinalProductName: BackboneElement {
	
	/// The full product name
	public var productName: FHIRPrimitive<FHIRString>
	
	/// Coding words or phrases of the name
	public var namePart: [MedicinalProductNameNamePart]?
	
	/// Country where the name applies
	public var countryLanguage: [MedicinalProductNameCountryLanguage]?
	
	/// Designated initializer taking all required properties
	public init(productName: FHIRPrimitive<FHIRString>) {
		self.productName = productName
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							countryLanguage: [MedicinalProductNameCountryLanguage]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							namePart: [MedicinalProductNameNamePart]? = nil,
							productName: FHIRPrimitive<FHIRString>)
	{
		self.init(productName: productName)
		self.countryLanguage = countryLanguage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.namePart = namePart
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countryLanguage
		case namePart
		case productName; case _productName
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.countryLanguage = try [MedicinalProductNameCountryLanguage](from: _container, forKeyIfPresent: .countryLanguage)
		self.namePart = try [MedicinalProductNameNamePart](from: _container, forKeyIfPresent: .namePart)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKey: .productName, auxiliaryKey: ._productName)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try countryLanguage?.encode(on: &_container, forKey: .countryLanguage)
		try namePart?.encode(on: &_container, forKey: .namePart)
		try productName.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return countryLanguage == _other.countryLanguage
		    && namePart == _other.namePart
		    && productName == _other.productName
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(countryLanguage)
		hasher.combine(namePart)
		hasher.combine(productName)
	}
}

/**
 Country where the name applies.
 */
open class MedicinalProductNameCountryLanguage: BackboneElement {
	
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
							modifierExtension: [Extension]? = nil)
	{
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
		guard let _other = _other as? MedicinalProductNameCountryLanguage else {
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
 Coding words or phrases of the name.
 */
open class MedicinalProductNameNamePart: BackboneElement {
	
	/// A fragment of a product name
	public var part: FHIRPrimitive<FHIRString>
	
	/// Idenifying type for this part of the name (e.g. strength part)
	public var type: Coding
	
	/// Designated initializer taking all required properties
	public init(part: FHIRPrimitive<FHIRString>, type: Coding) {
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
							type: Coding)
	{
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
		self.type = try Coding(from: _container, forKey: .type)
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
		guard let _other = _other as? MedicinalProductNameNamePart else {
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
 Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
 */
open class MedicinalProductSpecialDesignation: BackboneElement {
	
	/// All possible types for "indication[x]"
	public enum IndicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Identifier for the designation, or procedure number
	public var identifier: [Identifier]?
	
	/// The type of special designation, e.g. orphan drug, minor use
	public var type: CodeableConcept?
	
	/// The intended use of the product, e.g. prevention, treatment
	public var intendedUse: CodeableConcept?
	
	/// Condition for which the medicinal use applies
	/// One of `indication[x]`
	public var indication: IndicationX?
	
	/// For example granted, pending, expired or withdrawn
	public var status: CodeableConcept?
	
	/// Date when the designation was granted
	public var date: FHIRPrimitive<DateTime>?
	
	/// Animal species for which this applies
	public var species: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							indication: IndicationX? = nil,
							intendedUse: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							species: CodeableConcept? = nil,
							status: CodeableConcept? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case identifier
		case indicationCodeableConcept
		case indicationReference
		case intendedUse
		case species
		case status
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
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
		self.intendedUse = try CodeableConcept(from: _container, forKeyIfPresent: .intendedUse)
		self.species = try CodeableConcept(from: _container, forKeyIfPresent: .species)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
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
		try species?.encode(on: &_container, forKey: .species)
		try status?.encode(on: &_container, forKey: .status)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductSpecialDesignation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && identifier == _other.identifier
		    && indication == _other.indication
		    && intendedUse == _other.intendedUse
		    && species == _other.species
		    && status == _other.status
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(indication)
		hasher.combine(intendedUse)
		hasher.combine(species)
		hasher.combine(status)
		hasher.combine(type)
	}
}
