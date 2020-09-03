//
//  MedicinalProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/MedicinalProductDefinition)
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
open class MedicinalProductDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductDefinition }
	
	/// Business identifier for this product. Could be an MPID
	public var identifier: [Identifier]?
	
	/// Regulatory type, e.g. Investigational or Authorized
	public var type: CodeableConcept?
	
	/// If this medicine applies to human or veterinary uses
	public var domain: CodeableConcept?
	
	/// A business level identifier of the product
	public var version: FHIRPrimitive<FHIRString>?
	
	/// The status within the lifecycle of this product. A high level status, this is not intended to duplicate details
	/// carried elswhere such as legal status, or authorization status
	public var status: CodeableConcept?
	
	/// The date at which the given status became applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// General description of this product
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The dose form for a single part product, or combined form of a multiple part product
	public var combinedPharmaceuticalDoseForm: CodeableConcept?
	
	/// General combined description of indication(s) for this product, for use when a structured set is not available.
	/// See also the ClinicalUseIssue resource, which can be used for more structured indications, and can be made to
	/// reference to this resource
	public var indication: FHIRPrimitive<FHIRString>?
	
	/// The legal status of supply of the medicinal product as classified by the regulator
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons
	public var additionalMonitoringIndicator: CodeableConcept?
	
	/// Whether the Medicinal Product is subject to special measures for regulatory reasons
	public var specialMeasures: [CodeableConcept]?
	
	/// If authorised for use in children
	public var paediatricUseIndicator: CodeableConcept?
	
	/// Allows the product to be classified by various systems
	public var classification: [CodeableConcept]?
	
	/// Allows the key product features to be recorded, such as "suger free", "modified release", "parallel import"
	public var characteristic: [CodeableConcept]?
	
	/// Marketing status of the medicinal product, in contrast to marketing authorizaton
	public var marketingStatus: [MarketingStatus]?
	
	/// Pharmaceutical aspects of product
	public var pharmaceuticalProduct: [Reference]?
	
	/// Package representation for the product
	public var packagedMedicinalProduct: [Reference]?
	
	/// The ingredients of this medicinal product - when not specified elsewhere. This is only needed if the ingredients
	/// are not specified by the pharmaceuticalProduct or packagedMedicinalProduct references above. In cases where
	/// those levels of detail are not used, the ingredients may be specified directly here
	public var ingredient: [Reference]?
	
	/// Any component of the drug product which is not the chemical entity defined as the drug substance or an excipient
	/// in the drug product. This includes process-related impurities and contaminants, product-related impurities
	/// including degradation products
	public var impurity: [Reference]?
	
	/// Supporting documentation, typically for regulatory submission
	public var attachedDocument: [Reference]?
	
	/// A master file for to the medicinal product (e.g. Pharmacovigilance System Master File)
	public var masterFile: [Reference]?
	
	/// A product specific contact, person (in a role), or an organization
	public var contact: [MedicinalProductDefinitionContact]?
	
	/// Clinical trials or studies that this product is involved in
	public var clinicalTrial: [Reference]?
	
	/// The product's name, including full name and possibly coded parts
	public var name: [MedicinalProductDefinitionName]
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var crossReference: [MedicinalProductDefinitionCrossReference]?
	
	/// An operation applied to the product, for manufacturing or adminsitrative purpose
	public var manufacturingBusinessOperation: [MedicinalProductDefinitionManufacturingBusinessOperation]?
	
	/// Designated initializer taking all required properties
	public init(name: [MedicinalProductDefinitionName]) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							additionalMonitoringIndicator: CodeableConcept? = nil,
							attachedDocument: [Reference]? = nil,
							characteristic: [CodeableConcept]? = nil,
							classification: [CodeableConcept]? = nil,
							clinicalTrial: [Reference]? = nil,
							combinedPharmaceuticalDoseForm: CodeableConcept? = nil,
							contact: [MedicinalProductDefinitionContact]? = nil,
							contained: [ResourceProxy]? = nil,
							crossReference: [MedicinalProductDefinitionCrossReference]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							domain: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							impurity: [Reference]? = nil,
							indication: FHIRPrimitive<FHIRString>? = nil,
							ingredient: [Reference]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							legalStatusOfSupply: CodeableConcept? = nil,
							manufacturingBusinessOperation: [MedicinalProductDefinitionManufacturingBusinessOperation]? = nil,
							marketingStatus: [MarketingStatus]? = nil,
							masterFile: [Reference]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: [MedicinalProductDefinitionName],
							packagedMedicinalProduct: [Reference]? = nil,
							paediatricUseIndicator: CodeableConcept? = nil,
							pharmaceuticalProduct: [Reference]? = nil,
							specialMeasures: [CodeableConcept]? = nil,
							status: CodeableConcept? = nil,
							statusDate: FHIRPrimitive<DateTime>? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name)
		self.additionalMonitoringIndicator = additionalMonitoringIndicator
		self.attachedDocument = attachedDocument
		self.characteristic = characteristic
		self.classification = classification
		self.clinicalTrial = clinicalTrial
		self.combinedPharmaceuticalDoseForm = combinedPharmaceuticalDoseForm
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
		self.manufacturingBusinessOperation = manufacturingBusinessOperation
		self.marketingStatus = marketingStatus
		self.masterFile = masterFile
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.packagedMedicinalProduct = packagedMedicinalProduct
		self.paediatricUseIndicator = paediatricUseIndicator
		self.pharmaceuticalProduct = pharmaceuticalProduct
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
		case combinedPharmaceuticalDoseForm
		case contact
		case crossReference
		case description_fhir = "description"; case _description_fhir = "_description"
		case domain
		case identifier
		case impurity
		case indication; case _indication
		case ingredient
		case legalStatusOfSupply
		case manufacturingBusinessOperation
		case marketingStatus
		case masterFile
		case name
		case packagedMedicinalProduct
		case paediatricUseIndicator
		case pharmaceuticalProduct
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
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.clinicalTrial = try [Reference](from: _container, forKeyIfPresent: .clinicalTrial)
		self.combinedPharmaceuticalDoseForm = try CodeableConcept(from: _container, forKeyIfPresent: .combinedPharmaceuticalDoseForm)
		self.contact = try [MedicinalProductDefinitionContact](from: _container, forKeyIfPresent: .contact)
		self.crossReference = try [MedicinalProductDefinitionCrossReference](from: _container, forKeyIfPresent: .crossReference)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.impurity = try [Reference](from: _container, forKeyIfPresent: .impurity)
		self.indication = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .indication, auxiliaryKey: ._indication)
		self.ingredient = try [Reference](from: _container, forKeyIfPresent: .ingredient)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.manufacturingBusinessOperation = try [MedicinalProductDefinitionManufacturingBusinessOperation](from: _container, forKeyIfPresent: .manufacturingBusinessOperation)
		self.marketingStatus = try [MarketingStatus](from: _container, forKeyIfPresent: .marketingStatus)
		self.masterFile = try [Reference](from: _container, forKeyIfPresent: .masterFile)
		self.name = try [MedicinalProductDefinitionName](from: _container, forKey: .name)
		self.packagedMedicinalProduct = try [Reference](from: _container, forKeyIfPresent: .packagedMedicinalProduct)
		self.paediatricUseIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .paediatricUseIndicator)
		self.pharmaceuticalProduct = try [Reference](from: _container, forKeyIfPresent: .pharmaceuticalProduct)
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
		try combinedPharmaceuticalDoseForm?.encode(on: &_container, forKey: .combinedPharmaceuticalDoseForm)
		try contact?.encode(on: &_container, forKey: .contact)
		try crossReference?.encode(on: &_container, forKey: .crossReference)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try domain?.encode(on: &_container, forKey: .domain)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try impurity?.encode(on: &_container, forKey: .impurity)
		try indication?.encode(on: &_container, forKey: .indication, auxiliaryKey: ._indication)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try manufacturingBusinessOperation?.encode(on: &_container, forKey: .manufacturingBusinessOperation)
		try marketingStatus?.encode(on: &_container, forKey: .marketingStatus)
		try masterFile?.encode(on: &_container, forKey: .masterFile)
		try name.encode(on: &_container, forKey: .name)
		try packagedMedicinalProduct?.encode(on: &_container, forKey: .packagedMedicinalProduct)
		try paediatricUseIndicator?.encode(on: &_container, forKey: .paediatricUseIndicator)
		try pharmaceuticalProduct?.encode(on: &_container, forKey: .pharmaceuticalProduct)
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
		    && combinedPharmaceuticalDoseForm == _other.combinedPharmaceuticalDoseForm
		    && contact == _other.contact
		    && crossReference == _other.crossReference
		    && description_fhir == _other.description_fhir
		    && domain == _other.domain
		    && identifier == _other.identifier
		    && impurity == _other.impurity
		    && indication == _other.indication
		    && ingredient == _other.ingredient
		    && legalStatusOfSupply == _other.legalStatusOfSupply
		    && manufacturingBusinessOperation == _other.manufacturingBusinessOperation
		    && marketingStatus == _other.marketingStatus
		    && masterFile == _other.masterFile
		    && name == _other.name
		    && packagedMedicinalProduct == _other.packagedMedicinalProduct
		    && paediatricUseIndicator == _other.paediatricUseIndicator
		    && pharmaceuticalProduct == _other.pharmaceuticalProduct
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
		hasher.combine(combinedPharmaceuticalDoseForm)
		hasher.combine(contact)
		hasher.combine(crossReference)
		hasher.combine(description_fhir)
		hasher.combine(domain)
		hasher.combine(identifier)
		hasher.combine(impurity)
		hasher.combine(indication)
		hasher.combine(ingredient)
		hasher.combine(legalStatusOfSupply)
		hasher.combine(manufacturingBusinessOperation)
		hasher.combine(marketingStatus)
		hasher.combine(masterFile)
		hasher.combine(name)
		hasher.combine(packagedMedicinalProduct)
		hasher.combine(paediatricUseIndicator)
		hasher.combine(pharmaceuticalProduct)
		hasher.combine(specialMeasures)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(type)
		hasher.combine(version)
	}
}

/**
 A product specific contact, person (in a role), or an organization.
 */
open class MedicinalProductDefinitionContact: BackboneElement {
	
	/// Allows the contact to be classified, for example QPPV, Pharmacovigilence Enquiry Information
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
							type: CodeableConcept? = nil)
	{
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
 */
open class MedicinalProductDefinitionCrossReference: BackboneElement {
	
	/// Reference to another product, e.g. for linking authorised to investigational product
	public var product: CodeableReference
	
	/// The type of relationship, for instance branded to generic, product to development product (investigational),
	/// parallel import version
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
							type: CodeableConcept? = nil)
	{
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
 An operation applied to the product, for manufacturing or adminsitrative purpose.
 */
open class MedicinalProductDefinitionManufacturingBusinessOperation: BackboneElement {
	
	/// The type of manufacturing operation e.g. manufacturing itself, re-packaging. This may be a subtype of some other
	/// wider scope of authorized operation, referenced by the authorization attribute
	public var type: CodeableReference?
	
	/// Date range of applicability
	public var effectiveDate: Period?
	
	/// The manufacturer or establishment associated with the process
	public var manufacturer: [Reference]?
	
	/// An authorization for this process, either as a logical reference, holding just an identifier, or a full
	/// refererence to a resource that captures the details. The authorization mayu possibly apply to several products
	/// or a wider scope of process of which this is a part
	public var authorization: Reference?
	
	/// To indicate if this proces is commercially confidential
	public var confidentialityIndicator: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authorization: Reference? = nil,
							confidentialityIndicator: CodeableConcept? = nil,
							effectiveDate: Period? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: [Reference]? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableReference? = nil)
	{
		self.init()
		self.authorization = authorization
		self.confidentialityIndicator = confidentialityIndicator
		self.effectiveDate = effectiveDate
		self.`extension` = `extension`
		self.id = id
		self.manufacturer = manufacturer
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorization
		case confidentialityIndicator
		case effectiveDate
		case manufacturer
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authorization = try Reference(from: _container, forKeyIfPresent: .authorization)
		self.confidentialityIndicator = try CodeableConcept(from: _container, forKeyIfPresent: .confidentialityIndicator)
		self.effectiveDate = try Period(from: _container, forKeyIfPresent: .effectiveDate)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authorization?.encode(on: &_container, forKey: .authorization)
		try confidentialityIndicator?.encode(on: &_container, forKey: .confidentialityIndicator)
		try effectiveDate?.encode(on: &_container, forKey: .effectiveDate)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductDefinitionManufacturingBusinessOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authorization == _other.authorization
		    && confidentialityIndicator == _other.confidentialityIndicator
		    && effectiveDate == _other.effectiveDate
		    && manufacturer == _other.manufacturer
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorization)
		hasher.combine(confidentialityIndicator)
		hasher.combine(effectiveDate)
		hasher.combine(manufacturer)
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
	public var namePart: [MedicinalProductDefinitionNameNamePart]?
	
	/// Country where the name applies
	public var countryLanguage: [MedicinalProductDefinitionNameCountryLanguage]?
	
	/// Designated initializer taking all required properties
	public init(productName: FHIRPrimitive<FHIRString>) {
		self.productName = productName
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							countryLanguage: [MedicinalProductDefinitionNameCountryLanguage]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							namePart: [MedicinalProductDefinitionNameNamePart]? = nil,
							productName: FHIRPrimitive<FHIRString>,
							type: CodeableConcept? = nil)
	{
		self.init(productName: productName)
		self.countryLanguage = countryLanguage
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.namePart = namePart
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countryLanguage
		case namePart
		case productName; case _productName
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.countryLanguage = try [MedicinalProductDefinitionNameCountryLanguage](from: _container, forKeyIfPresent: .countryLanguage)
		self.namePart = try [MedicinalProductDefinitionNameNamePart](from: _container, forKeyIfPresent: .namePart)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKey: .productName, auxiliaryKey: ._productName)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try countryLanguage?.encode(on: &_container, forKey: .countryLanguage)
		try namePart?.encode(on: &_container, forKey: .namePart)
		try productName.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try type?.encode(on: &_container, forKey: .type)
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
		return countryLanguage == _other.countryLanguage
		    && namePart == _other.namePart
		    && productName == _other.productName
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(countryLanguage)
		hasher.combine(namePart)
		hasher.combine(productName)
		hasher.combine(type)
	}
}

/**
 Country where the name applies.
 */
open class MedicinalProductDefinitionNameCountryLanguage: BackboneElement {
	
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
		guard let _other = _other as? MedicinalProductDefinitionNameCountryLanguage else {
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
open class MedicinalProductDefinitionNameNamePart: BackboneElement {
	
	/// A fragment of a product name
	public var part: FHIRPrimitive<FHIRString>
	
	/// Idenifying type for this part of the name (e.g. strength part)
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
							type: CodeableConcept)
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
		guard let _other = _other as? MedicinalProductDefinitionNameNamePart else {
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
