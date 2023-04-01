//
//  SubstanceDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SubstanceDefinition)
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
 The detailed description of a substance, typically at a level beyond what is used for prescribing.
 */
open class SubstanceDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .substanceDefinition }
	
	/// Identifier by which this substance is known
	public var identifier: [Identifier]?
	
	/// A business level version identifier of the substance
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Status of substance within the catalogue e.g. active, retired
	public var status: CodeableConcept?
	
	/// A categorization, high level e.g. polymer or nucleic acid, or food, chemical, biological, or lower e.g. polymer
	/// linear or branch chain, or type of impurity
	public var classification: [CodeableConcept]?
	
	/// If the substance applies to human or veterinary use
	public var domain: CodeableConcept?
	
	/// The quality standard, established benchmark, to which substance complies (e.g. USP/NF, BP)
	public var grade: [CodeableConcept]?
	
	/// Textual description of the substance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Supporting literature
	public var informationSource: [Reference]?
	
	/// Textual comment about the substance's catalogue or registry record
	public var note: [Annotation]?
	
	/// The entity that creates, makes, produces or fabricates the substance
	public var manufacturer: [Reference]?
	
	/// An entity that is the source for the substance. It may be different from the manufacturer
	public var supplier: [Reference]?
	
	/// Moiety, for structural modifications
	public var moiety: [SubstanceDefinitionMoiety]?
	
	/// General specifications for this substance
	public var characterization: [SubstanceDefinitionCharacterization]?
	
	/// General specifications for this substance
	public var property: [SubstanceDefinitionProperty]?
	
	/// General information detailing this substance
	public var referenceInformation: Reference?
	
	/// The average mass of a molecule of a compound
	public var molecularWeight: [SubstanceDefinitionMolecularWeight]?
	
	/// Structural information
	public var structure: SubstanceDefinitionStructure?
	
	/// Codes associated with the substance
	public var code: [SubstanceDefinitionFHIRString]?
	
	/// Names applicable to this substance
	public var name: [SubstanceDefinitionName]?
	
	/// A link between this substance and another
	public var relationship: [SubstanceDefinitionRelationship]?
	
	/// Data items specific to nucleic acids
	public var nucleicAcid: Reference?
	
	/// Data items specific to polymers
	public var polymer: Reference?
	
	/// Data items specific to proteins
	public var protein: Reference?
	
	/// Material or taxonomic/anatomical source
	public var sourceMaterial: SubstanceDefinitionSourceMaterial?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		characterization: [SubstanceDefinitionCharacterization]? = nil,
		classification: [CodeableConcept]? = nil,
		code: [SubstanceDefinitionFHIRString]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		domain: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		grade: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		informationSource: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		moiety: [SubstanceDefinitionMoiety]? = nil,
		molecularWeight: [SubstanceDefinitionMolecularWeight]? = nil,
		name: [SubstanceDefinitionName]? = nil,
		note: [Annotation]? = nil,
		nucleicAcid: Reference? = nil,
		polymer: Reference? = nil,
		property: [SubstanceDefinitionProperty]? = nil,
		protein: Reference? = nil,
		referenceInformation: Reference? = nil,
		relationship: [SubstanceDefinitionRelationship]? = nil,
		sourceMaterial: SubstanceDefinitionSourceMaterial? = nil,
		status: CodeableConcept? = nil,
		structure: SubstanceDefinitionStructure? = nil,
		supplier: [Reference]? = nil,
		text: Narrative? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.characterization = characterization
		self.classification = classification
		self.code = code
		self.contained = contained
		self.description_fhir = description_fhir
		self.domain = domain
		self.`extension` = `extension`
		self.grade = grade
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.moiety = moiety
		self.molecularWeight = molecularWeight
		self.name = name
		self.note = note
		self.nucleicAcid = nucleicAcid
		self.polymer = polymer
		self.property = property
		self.protein = protein
		self.referenceInformation = referenceInformation
		self.relationship = relationship
		self.sourceMaterial = sourceMaterial
		self.status = status
		self.structure = structure
		self.supplier = supplier
		self.text = text
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characterization
		case classification
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case domain
		case grade
		case identifier
		case informationSource
		case manufacturer
		case moiety
		case molecularWeight
		case name
		case note
		case nucleicAcid
		case polymer
		case property
		case protein
		case referenceInformation
		case relationship
		case sourceMaterial
		case status
		case structure
		case supplier
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.characterization = try [SubstanceDefinitionCharacterization](from: _container, forKeyIfPresent: .characterization)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.code = try [SubstanceDefinitionFHIRString](from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.grade = try [CodeableConcept](from: _container, forKeyIfPresent: .grade)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationSource = try [Reference](from: _container, forKeyIfPresent: .informationSource)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.moiety = try [SubstanceDefinitionMoiety](from: _container, forKeyIfPresent: .moiety)
		self.molecularWeight = try [SubstanceDefinitionMolecularWeight](from: _container, forKeyIfPresent: .molecularWeight)
		self.name = try [SubstanceDefinitionName](from: _container, forKeyIfPresent: .name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.nucleicAcid = try Reference(from: _container, forKeyIfPresent: .nucleicAcid)
		self.polymer = try Reference(from: _container, forKeyIfPresent: .polymer)
		self.property = try [SubstanceDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.protein = try Reference(from: _container, forKeyIfPresent: .protein)
		self.referenceInformation = try Reference(from: _container, forKeyIfPresent: .referenceInformation)
		self.relationship = try [SubstanceDefinitionRelationship](from: _container, forKeyIfPresent: .relationship)
		self.sourceMaterial = try SubstanceDefinitionSourceMaterial(from: _container, forKeyIfPresent: .sourceMaterial)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.structure = try SubstanceDefinitionStructure(from: _container, forKeyIfPresent: .structure)
		self.supplier = try [Reference](from: _container, forKeyIfPresent: .supplier)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try characterization?.encode(on: &_container, forKey: .characterization)
		try classification?.encode(on: &_container, forKey: .classification)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try domain?.encode(on: &_container, forKey: .domain)
		try grade?.encode(on: &_container, forKey: .grade)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try moiety?.encode(on: &_container, forKey: .moiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try name?.encode(on: &_container, forKey: .name)
		try note?.encode(on: &_container, forKey: .note)
		try nucleicAcid?.encode(on: &_container, forKey: .nucleicAcid)
		try polymer?.encode(on: &_container, forKey: .polymer)
		try property?.encode(on: &_container, forKey: .property)
		try protein?.encode(on: &_container, forKey: .protein)
		try referenceInformation?.encode(on: &_container, forKey: .referenceInformation)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try sourceMaterial?.encode(on: &_container, forKey: .sourceMaterial)
		try status?.encode(on: &_container, forKey: .status)
		try structure?.encode(on: &_container, forKey: .structure)
		try supplier?.encode(on: &_container, forKey: .supplier)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return characterization == _other.characterization
		    && classification == _other.classification
		    && code == _other.code
		    && description_fhir == _other.description_fhir
		    && domain == _other.domain
		    && grade == _other.grade
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
		    && manufacturer == _other.manufacturer
		    && moiety == _other.moiety
		    && molecularWeight == _other.molecularWeight
		    && name == _other.name
		    && note == _other.note
		    && nucleicAcid == _other.nucleicAcid
		    && polymer == _other.polymer
		    && property == _other.property
		    && protein == _other.protein
		    && referenceInformation == _other.referenceInformation
		    && relationship == _other.relationship
		    && sourceMaterial == _other.sourceMaterial
		    && status == _other.status
		    && structure == _other.structure
		    && supplier == _other.supplier
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(characterization)
		hasher.combine(classification)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(domain)
		hasher.combine(grade)
		hasher.combine(identifier)
		hasher.combine(informationSource)
		hasher.combine(manufacturer)
		hasher.combine(moiety)
		hasher.combine(molecularWeight)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(nucleicAcid)
		hasher.combine(polymer)
		hasher.combine(property)
		hasher.combine(protein)
		hasher.combine(referenceInformation)
		hasher.combine(relationship)
		hasher.combine(sourceMaterial)
		hasher.combine(status)
		hasher.combine(structure)
		hasher.combine(supplier)
		hasher.combine(version)
	}
}

/**
 General specifications for this substance.
 */
open class SubstanceDefinitionCharacterization: BackboneElement {
	
	/// The method used to find the characterization e.g. HPLC
	public var technique: CodeableConcept?
	
	/// Describes the nature of the chemical entity and explains, for instance, whether this is a base or a salt form
	public var form: CodeableConcept?
	
	/// The description or justification in support of the interpretation of the data file
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The data produced by the analytical instrument or a pictorial representation of that data. Examples: a JCAMP,
	/// JDX, or ADX file, or a chromatogram or spectrum analysis
	public var file: [Attachment]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		file: [Attachment]? = nil,
		form: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		technique: CodeableConcept? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.file = file
		self.form = form
		self.id = id
		self.modifierExtension = modifierExtension
		self.technique = technique
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case file
		case form
		case technique
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.file = try [Attachment](from: _container, forKeyIfPresent: .file)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.technique = try CodeableConcept(from: _container, forKeyIfPresent: .technique)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try file?.encode(on: &_container, forKey: .file)
		try form?.encode(on: &_container, forKey: .form)
		try technique?.encode(on: &_container, forKey: .technique)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionCharacterization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && file == _other.file
		    && form == _other.form
		    && technique == _other.technique
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(file)
		hasher.combine(form)
		hasher.combine(technique)
	}
}

/**
 Codes associated with the substance.
 */
open class SubstanceDefinitionFHIRString: BackboneElement {
	
	/// The specific code
	public var code: CodeableConcept?
	
	/// Status of the code assignment, for example 'provisional', 'approved'
	public var status: CodeableConcept?
	
	/// The date at which the code status was changed
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// Any comment can be provided in this field
	public var note: [Annotation]?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		source: [Reference]? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil
	) {
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.source = source
		self.status = status
		self.statusDate = statusDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case note
		case source
		case status
		case statusDate; case _statusDate
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try note?.encode(on: &_container, forKey: .note)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionFHIRString else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && note == _other.note
		    && source == _other.source
		    && status == _other.status
		    && statusDate == _other.statusDate
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(note)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(statusDate)
	}
}

/**
 Moiety, for structural modifications.
 */
open class SubstanceDefinitionMoiety: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Role that the moiety is playing
	public var role: CodeableConcept?
	
	/// Identifier by which this moiety substance is known
	public var identifier: Identifier?
	
	/// Textual name for this moiety substance
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// Molecular formula for this moiety (e.g. with the Hill system)
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Quantitative value for this moiety
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// The measurement type of the quantitative value
	public var measurementType: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: AmountX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		measurementType: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		molecularFormula: FHIRPrimitive<FHIRString>? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		opticalActivity: CodeableConcept? = nil,
		role: CodeableConcept? = nil,
		stereochemistry: CodeableConcept? = nil
	) {
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.measurementType = measurementType
		self.modifierExtension = modifierExtension
		self.molecularFormula = molecularFormula
		self.name = name
		self.opticalActivity = opticalActivity
		self.role = role
		self.stereochemistry = stereochemistry
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountString; case _amountString
		case identifier
		case measurementType
		case molecularFormula; case _molecularFormula
		case name; case _name
		case opticalActivity
		case role
		case stereochemistry
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		self.amount = _t_amount
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.measurementType = try CodeableConcept(from: _container, forKeyIfPresent: .measurementType)
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
			}
		}
		try identifier?.encode(on: &_container, forKey: .identifier)
		try measurementType?.encode(on: &_container, forKey: .measurementType)
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try role?.encode(on: &_container, forKey: .role)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionMoiety else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && identifier == _other.identifier
		    && measurementType == _other.measurementType
		    && molecularFormula == _other.molecularFormula
		    && name == _other.name
		    && opticalActivity == _other.opticalActivity
		    && role == _other.role
		    && stereochemistry == _other.stereochemistry
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(identifier)
		hasher.combine(measurementType)
		hasher.combine(molecularFormula)
		hasher.combine(name)
		hasher.combine(opticalActivity)
		hasher.combine(role)
		hasher.combine(stereochemistry)
	}
}

/**
 The average mass of a molecule of a compound.
 
 The average mass of a molecule of a compound compared to 1/12 the mass of carbon 12 and calculated as the sum of the
 atomic weights of the constituent atoms.
 */
open class SubstanceDefinitionMolecularWeight: BackboneElement {
	
	/// The method by which the weight was determined
	public var method: CodeableConcept?
	
	/// Type of molecular weight e.g. exact, average, weight average
	public var type: CodeableConcept?
	
	/// Used to capture quantitative values for a variety of elements
	public var amount: Quantity
	
	/// Designated initializer taking all required properties
	public init(amount: Quantity) {
		self.amount = amount
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Quantity,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(amount: amount)
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case method
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKey: .amount)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount.encode(on: &_container, forKey: .amount)
		try method?.encode(on: &_container, forKey: .method)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionMolecularWeight else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && method == _other.method
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(method)
		hasher.combine(type)
	}
}

/**
 Names applicable to this substance.
 */
open class SubstanceDefinitionName: BackboneElement {
	
	/// The actual name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name type e.g. 'systematic',  'scientific, 'brand'
	public var type: CodeableConcept?
	
	/// The status of the name e.g. 'current', 'proposed'
	public var status: CodeableConcept?
	
	/// If this is the preferred name for this substance
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Human language that the name is written in
	public var language: [CodeableConcept]?
	
	/// The use context of this name e.g. as an active ingredient or as a food colour additive
	public var domain: [CodeableConcept]?
	
	/// The jurisdiction where this name applies
	public var jurisdiction: [CodeableConcept]?
	
	/// A synonym of this particular name, by which the substance is also known
	public var synonym: [SubstanceDefinitionName]?
	
	/// A translation for this name into another human language
	public var translation: [SubstanceDefinitionName]?
	
	/// Details of the official nature of this name
	public var official: [SubstanceDefinitionNameOfficial]?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		domain: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		official: [SubstanceDefinitionNameOfficial]? = nil,
		preferred: FHIRPrimitive<FHIRBool>? = nil,
		source: [Reference]? = nil,
		status: CodeableConcept? = nil,
		synonym: [SubstanceDefinitionName]? = nil,
		translation: [SubstanceDefinitionName]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init(name: name)
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.language = language
		self.modifierExtension = modifierExtension
		self.official = official
		self.preferred = preferred
		self.source = source
		self.status = status
		self.synonym = synonym
		self.translation = translation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case domain
		case jurisdiction
		case language
		case name; case _name
		case official
		case preferred; case _preferred
		case source
		case status
		case synonym
		case translation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.domain = try [CodeableConcept](from: _container, forKeyIfPresent: .domain)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try [CodeableConcept](from: _container, forKeyIfPresent: .language)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.official = try [SubstanceDefinitionNameOfficial](from: _container, forKeyIfPresent: .official)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.synonym = try [SubstanceDefinitionName](from: _container, forKeyIfPresent: .synonym)
		self.translation = try [SubstanceDefinitionName](from: _container, forKeyIfPresent: .translation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try domain?.encode(on: &_container, forKey: .domain)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try official?.encode(on: &_container, forKey: .official)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try synonym?.encode(on: &_container, forKey: .synonym)
		try translation?.encode(on: &_container, forKey: .translation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return domain == _other.domain
		    && jurisdiction == _other.jurisdiction
		    && language == _other.language
		    && name == _other.name
		    && official == _other.official
		    && preferred == _other.preferred
		    && source == _other.source
		    && status == _other.status
		    && synonym == _other.synonym
		    && translation == _other.translation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(domain)
		hasher.combine(jurisdiction)
		hasher.combine(language)
		hasher.combine(name)
		hasher.combine(official)
		hasher.combine(preferred)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(synonym)
		hasher.combine(translation)
		hasher.combine(type)
	}
}

/**
 Details of the official nature of this name.
 */
open class SubstanceDefinitionNameOfficial: BackboneElement {
	
	/// Which authority uses this official name
	public var authority: CodeableConcept?
	
	/// The status of the official name, for example 'draft', 'active'
	public var status: CodeableConcept?
	
	/// Date of official name change
	public var date: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		authority: CodeableConcept? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept? = nil
	) {
		self.init()
		self.authority = authority
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case date; case _date
		case status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try CodeableConcept(from: _container, forKeyIfPresent: .authority)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try status?.encode(on: &_container, forKey: .status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionNameOfficial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authority == _other.authority
		    && date == _other.date
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(date)
		hasher.combine(status)
	}
}

/**
 General specifications for this substance.
 */
open class SubstanceDefinitionProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case quantity(Quantity)
	}
	
	/// A code expressing the type of property
	public var type: CodeableConcept
	
	/// A value for the property
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
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
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
		guard let _other = _other as? SubstanceDefinitionProperty else {
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
 A link between this substance and another.
 
 A link between this substance and another, with details of the relationship.
 */
open class SubstanceDefinitionRelationship: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "substanceDefinition[x]"
	public enum SubstanceDefinitionX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// A pointer to another substance, as a resource or a representational code
	/// One of `substanceDefinition[x]`
	public var substanceDefinition: SubstanceDefinitionX?
	
	/// For example "salt to parent", "active moiety"
	public var type: CodeableConcept
	
	/// For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that
	/// enzyme, out of several possible relationships
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// A numeric factor for the relationship, e.g. that a substance salt has some percentage of active substance in
	/// relation to some other
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// For use when the numeric has an uncertain range
	public var ratioHighLimitAmount: Ratio?
	
	/// An operator for the amount, for example "average", "approximately", "less than"
	public var comparator: CodeableConcept?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: AmountX? = nil,
		comparator: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDefining: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		ratioHighLimitAmount: Ratio? = nil,
		source: [Reference]? = nil,
		substanceDefinition: SubstanceDefinitionX? = nil,
		type: CodeableConcept
	) {
		self.init(type: type)
		self.amount = amount
		self.comparator = comparator
		self.`extension` = `extension`
		self.id = id
		self.isDefining = isDefining
		self.modifierExtension = modifierExtension
		self.ratioHighLimitAmount = ratioHighLimitAmount
		self.source = source
		self.substanceDefinition = substanceDefinition
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountRatio
		case amountString; case _amountString
		case comparator
		case isDefining; case _isDefining
		case ratioHighLimitAmount
		case source
		case substanceDefinitionCodeableConcept
		case substanceDefinitionReference
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountRatio = try Ratio(from: _container, forKeyIfPresent: .amountRatio) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRatio, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .ratio(amountRatio)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		self.amount = _t_amount
		self.comparator = try CodeableConcept(from: _container, forKeyIfPresent: .comparator)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		self.ratioHighLimitAmount = try Ratio(from: _container, forKeyIfPresent: .ratioHighLimitAmount)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		var _t_substanceDefinition: SubstanceDefinitionX? = nil
		if let substanceDefinitionReference = try Reference(from: _container, forKeyIfPresent: .substanceDefinitionReference) {
			if _t_substanceDefinition != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceDefinitionReference, in: _container, debugDescription: "More than one value provided for \"substanceDefinition\"")
			}
			_t_substanceDefinition = .reference(substanceDefinitionReference)
		}
		if let substanceDefinitionCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .substanceDefinitionCodeableConcept) {
			if _t_substanceDefinition != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceDefinitionCodeableConcept, in: _container, debugDescription: "More than one value provided for \"substanceDefinition\"")
			}
			_t_substanceDefinition = .codeableConcept(substanceDefinitionCodeableConcept)
		}
		self.substanceDefinition = _t_substanceDefinition
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .amountRatio)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
			}
		}
		try comparator?.encode(on: &_container, forKey: .comparator)
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try ratioHighLimitAmount?.encode(on: &_container, forKey: .ratioHighLimitAmount)
		try source?.encode(on: &_container, forKey: .source)
		if let _enum = substanceDefinition {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .substanceDefinitionReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .substanceDefinitionCodeableConcept)
			}
		}
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionRelationship else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && comparator == _other.comparator
		    && isDefining == _other.isDefining
		    && ratioHighLimitAmount == _other.ratioHighLimitAmount
		    && source == _other.source
		    && substanceDefinition == _other.substanceDefinition
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(comparator)
		hasher.combine(isDefining)
		hasher.combine(ratioHighLimitAmount)
		hasher.combine(source)
		hasher.combine(substanceDefinition)
		hasher.combine(type)
	}
}

/**
 Material or taxonomic/anatomical source.
 
 Material or taxonomic/anatomical source for the substance.
 */
open class SubstanceDefinitionSourceMaterial: BackboneElement {
	
	/// Classification of the origin of the raw material. e.g. cat hair is an Animal source type
	public var type: CodeableConcept?
	
	/// The genus of an organism e.g. the Latin epithet of the plant/animal scientific name
	public var genus: CodeableConcept?
	
	/// The species of an organism e.g. the Latin epithet of the species of the plant/animal
	public var species: CodeableConcept?
	
	/// An anatomical origin of the source material within an organism
	public var part: CodeableConcept?
	
	/// The country or countries where the material is harvested
	public var countryOfOrigin: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		countryOfOrigin: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		genus: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: CodeableConcept? = nil,
		species: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.countryOfOrigin = countryOfOrigin
		self.`extension` = `extension`
		self.genus = genus
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.species = species
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countryOfOrigin
		case genus
		case part
		case species
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.countryOfOrigin = try [CodeableConcept](from: _container, forKeyIfPresent: .countryOfOrigin)
		self.genus = try CodeableConcept(from: _container, forKeyIfPresent: .genus)
		self.part = try CodeableConcept(from: _container, forKeyIfPresent: .part)
		self.species = try CodeableConcept(from: _container, forKeyIfPresent: .species)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try countryOfOrigin?.encode(on: &_container, forKey: .countryOfOrigin)
		try genus?.encode(on: &_container, forKey: .genus)
		try part?.encode(on: &_container, forKey: .part)
		try species?.encode(on: &_container, forKey: .species)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionSourceMaterial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return countryOfOrigin == _other.countryOfOrigin
		    && genus == _other.genus
		    && part == _other.part
		    && species == _other.species
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(countryOfOrigin)
		hasher.combine(genus)
		hasher.combine(part)
		hasher.combine(species)
		hasher.combine(type)
	}
}

/**
 Structural information.
 */
open class SubstanceDefinitionStructure: BackboneElement {
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// An expression which states the number and type of atoms present in a molecule of a substance
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Specified per moiety according to the Hill system
	public var molecularFormulaByMoiety: FHIRPrimitive<FHIRString>?
	
	/// The molecular weight or weight range
	public var molecularWeight: SubstanceDefinitionMolecularWeight?
	
	/// The method used to find the structure e.g. X-ray, NMR
	public var technique: [CodeableConcept]?
	
	/// Source of information for the structure
	public var sourceDocument: [Reference]?
	
	/// A depiction of the structure of the substance
	public var representation: [SubstanceDefinitionStructureRepresentation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		molecularFormula: FHIRPrimitive<FHIRString>? = nil,
		molecularFormulaByMoiety: FHIRPrimitive<FHIRString>? = nil,
		molecularWeight: SubstanceDefinitionMolecularWeight? = nil,
		opticalActivity: CodeableConcept? = nil,
		representation: [SubstanceDefinitionStructureRepresentation]? = nil,
		sourceDocument: [Reference]? = nil,
		stereochemistry: CodeableConcept? = nil,
		technique: [CodeableConcept]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.molecularFormula = molecularFormula
		self.molecularFormulaByMoiety = molecularFormulaByMoiety
		self.molecularWeight = molecularWeight
		self.opticalActivity = opticalActivity
		self.representation = representation
		self.sourceDocument = sourceDocument
		self.stereochemistry = stereochemistry
		self.technique = technique
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case molecularFormula; case _molecularFormula
		case molecularFormulaByMoiety; case _molecularFormulaByMoiety
		case molecularWeight
		case opticalActivity
		case representation
		case sourceDocument
		case stereochemistry
		case technique
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.molecularFormulaByMoiety = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		self.molecularWeight = try SubstanceDefinitionMolecularWeight(from: _container, forKeyIfPresent: .molecularWeight)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.representation = try [SubstanceDefinitionStructureRepresentation](from: _container, forKeyIfPresent: .representation)
		self.sourceDocument = try [Reference](from: _container, forKeyIfPresent: .sourceDocument)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
		self.technique = try [CodeableConcept](from: _container, forKeyIfPresent: .technique)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try molecularFormulaByMoiety?.encode(on: &_container, forKey: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try representation?.encode(on: &_container, forKey: .representation)
		try sourceDocument?.encode(on: &_container, forKey: .sourceDocument)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
		try technique?.encode(on: &_container, forKey: .technique)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionStructure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return molecularFormula == _other.molecularFormula
		    && molecularFormulaByMoiety == _other.molecularFormulaByMoiety
		    && molecularWeight == _other.molecularWeight
		    && opticalActivity == _other.opticalActivity
		    && representation == _other.representation
		    && sourceDocument == _other.sourceDocument
		    && stereochemistry == _other.stereochemistry
		    && technique == _other.technique
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(molecularFormula)
		hasher.combine(molecularFormulaByMoiety)
		hasher.combine(molecularWeight)
		hasher.combine(opticalActivity)
		hasher.combine(representation)
		hasher.combine(sourceDocument)
		hasher.combine(stereochemistry)
		hasher.combine(technique)
	}
}

/**
 A depiction of the structure of the substance.
 */
open class SubstanceDefinitionStructureRepresentation: BackboneElement {
	
	/// The kind of structural representation (e.g. full, partial)
	public var type: CodeableConcept?
	
	/// The structural representation as a text string in a standard format
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// The format of the representation e.g. InChI, SMILES, MOLFILE (note: not the physical file format)
	public var format: CodeableConcept?
	
	/// An attachment with the structural representation e.g. a structure graphic or AnIML file
	public var document: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		document: Reference? = nil,
		`extension`: [Extension]? = nil,
		format: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		representation: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.document = document
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.modifierExtension = modifierExtension
		self.representation = representation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case document
		case format
		case representation; case _representation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.document = try Reference(from: _container, forKeyIfPresent: .document)
		self.format = try CodeableConcept(from: _container, forKeyIfPresent: .format)
		self.representation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .representation, auxiliaryKey: ._representation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try document?.encode(on: &_container, forKey: .document)
		try format?.encode(on: &_container, forKey: .format)
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceDefinitionStructureRepresentation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return document == _other.document
		    && format == _other.format
		    && representation == _other.representation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(document)
		hasher.combine(format)
		hasher.combine(representation)
		hasher.combine(type)
	}
}
